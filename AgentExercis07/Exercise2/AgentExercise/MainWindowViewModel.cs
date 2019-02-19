using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using I4GUI;
using Prism.Commands;
using Prism.Mvvm;

namespace AgentExercise
{
    public class MainWindowViewModel : BindableBase
    {
        private ObservableCollection<Agent> _agents;

        public MainWindowViewModel()
        {
            _agents = new ObservableCollection<Agent>
            {
                new Agent("001", "Nina", "Assasination", "UpperVolta"),
                new Agent("007", "James Bond", "Assasination", "UpperVolta")
            };
        }

        
        #region Properties

        int currentIndex = -1;

        public int CurrentIndex
        {
            get { return currentIndex; }
            set { SetProperty(ref currentIndex, value); }
        }

        public ObservableCollection<Agent> Agents
        {
            get
            {
                return _agents;
            }
        }

        

        private Agent _currentAgent = null;
        public Agent CurrentAgent
        {
            get { return _currentAgent; }
            set
            {
                SetProperty(ref _currentAgent, value);
                //if (currentPerson != value)
                //{
                //    currentPerson = value;
                //    NotifyPropertyChanged();
                //}
            }
        }

        #endregion

        #region Commands


        //leftBtnCmd

        private ICommand _leftBtnCmd;
        public ICommand LeftBtnCmd
        {
            get
            {
                return _leftBtnCmd ?? (_leftBtnCmd = new DelegateCommand(LeftBtnCmdHandler));
            }
        }

        void LeftBtnCmdHandler()
        {
            if (CurrentIndex != 0)
                CurrentIndex -= 1;
        }

        //RightBtnCmd

        private ICommand _rightBtnCmd;

        public ICommand RightBtnCmd
        {
            get
            {
                return _rightBtnCmd ?? (_rightBtnCmd = new DelegateCommand(RightBtnCmdHandler));
            }
        }

        void RightBtnCmdHandler()
        {
            if (CurrentIndex < Agents.Count() -1)
            ++CurrentIndex;
        }

        //Add new


        private ICommand _addNewAgentCmd;

        public ICommand AddNewAgentCmd
        {
            get
            {
                return _addNewAgentCmd ?? (_addNewAgentCmd = new DelegateCommand(AddNewAgentCmdHandler));
            }
        }

        void AddNewAgentCmdHandler()
        {
            Agents.Add(new Agent("N/A", "New Agent", "N/A", "N/A"));
        }

        //Exit


        #endregion
    }
}

/*
        private Agent Nina;
        private Agent Bond;
        private Agents AgentCollection = new Agents();

    public MainWindow()
        {
            Nina = new Agent("001", "Nina", "Assasination", "UpperVolta");
            Bond = new Agent("007", "James Bond", "Assasination", "UpperVolta");
            InitializeComponent();
            DataContext = AgentCollection;
        }

        private void AgentListBox_Loaded(object sender, RoutedEventArgs e)
        {
            AgentCollection.Add(Nina);
            AgentCollection.Add(Bond);
        }

        private void AddNewBtn_Click(object sender, RoutedEventArgs e)
        {
            AgentCollection.Add(new Agent("N/A", "New Agent", "N/A", "N/A"));
        }

        private void leftBtn_Click(object sender, RoutedEventArgs e)
        {
            AgentListBox.SelectedIndex -= 1;
        }

        private void rightBtn_Click(object sender, RoutedEventArgs e)
        {
            AgentListBox.SelectedIndex += 1;
        }
    }
 */
